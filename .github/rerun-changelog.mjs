import { Octokit } from '@octokit/action';

if (process.env.GITHUB_REF_TYPE == 'tag') {
    const octokit = new Octokit();

    const workflowRuns = await octokit.actions.listWorkflowRuns({
        owner: 'camptocamp',
        repo: 'helm-mutualize',
        workflow_id: 'changelog.yaml',
        per_page: 1,
    });
    const workflowRun = workflowRuns.data['workflow_runs'][0];

    const result = await octokit.actions.reRunWorkflow({
        owner: 'camptocamp',
        repo: 'helm-mutualize',
        run_id: workflowRun['id'],
    });
}
