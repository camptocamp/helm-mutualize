import { Octokit } from '@octokit/action';

if (process.env.GITHUB_REF_TYPE == 'tag') {
    const octokit = new Octokit();

    octokit.rest.repos.createDispatchEvent({
        owner: 'camptocamp',
        repo: 'helm-mutualize',
        event_type: 'changelog',
    });
}
