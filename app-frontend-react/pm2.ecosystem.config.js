module.exports = {
  apps: [
    {
      name: "my-app",
      script: "npm",
      args: "start",
      exec_mode: "fork",
      instances: "1",
    },
  ],
};
