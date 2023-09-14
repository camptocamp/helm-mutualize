import { Octokit } from '@octokit/action';

const octokit = new Octokit();

const workflowRuns = await octokit.actions.listWorkflowRuns({
    owner: 'camptocamp',
    repo: 'helm-mutualize',
    workflow_id: 'changelog.yaml',
    per_page: 1,
});
const workflowRun = workflowRuns.data['workflow_runs'][0];

console.log(workflowRun['status']);
console.log(workflowRun['conclusion']);

if (workflowRun['status'] != 'completed' || workflowRun['conclusion'] != 'success') {
    const result = await octokit.actions.reRunWorkflowFailedJobs({
        owner: 'camptocamp',
        repo: 'helm-mutualize',
        run_id: workflowRun['id'],
    });
}
