module.exports = ({ env }) => ({
  "github-actions": {
    hasEnvPat: true,
    pats: { "Publish blog": env("GITHUB_PAT") },
  },
});
