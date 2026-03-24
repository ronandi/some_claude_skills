# Some Claude Skills

**190+ production-ready skills for [Claude Code](https://docs.anthropic.com/en/docs/claude-code).**

Skills are modular prompt extensions that teach Claude domain expertise — decision frameworks, best practices, proven methodologies, and domain reasoning.

## Install

### As a Claude Code Plugin

```bash
claude plugin add ronandi/some_claude_skills
```

### Manual

```bash
git clone git@github.com:ronandi/some_claude_skills.git
cp -r some_claude_skills/.claude/skills/* ~/.claude/skills/
```

## Skills

### Design & Creative
`design-system-creator` · `native-app-designer` · `typography-expert` · `vaporwave-glassomorphic-ui-designer` · `web-design-expert` · `windows-3-1-web-designer` · `windows-95-web-designer` · `interior-design-expert` · `vibe-matcher` · `design-archivist` · `2000s-visualization-expert` · `neobrutalist-web-designer` · `design-system-generator` · `design-trend-analyzer` · `dark-mode-design-expert` · `design-critic` · `design-system-documenter` · `component-template-generator` · `design-accessibility-auditor` · `color-contrast-auditor` · `color-theory-palette-harmony-expert`

### Development & Architecture
`code-architecture` · `code-necromancer` · `typescript-advanced-patterns` · `error-handling-patterns` · `caching-strategies` · `database-design-patterns` · `microservices-patterns` · `rest-api-design` · `api-architect` · `openapi-spec-writer` · `monorepo-management` · `dependency-management` · `refactoring-surgeon` · `logging-observability` · `performance-profiling` · `git-workflow-expert`

### Frontend
`nextjs-app-router-expert` · `frontend-architect` · `react-performance-optimizer` · `form-validation-architect` · `pwa-expert` · `mobile-ux-optimizer` · `web-design-guidelines` · `web-weather-creator` · `web-wave-designer` · `web-cloud-designer`

### Testing & DevOps
`vitest-testing-patterns` · `playwright-e2e-tester` · `test-automation-expert` · `code-review-checklist` · `github-actions-pipeline-builder` · `devops-automator` · `docker-containerization` · `terraform-iac-expert` · `cloudflare-worker-dev` · `site-reliability-engineer`

### AI & ML
`ai-engineer` · `prompt-engineer` · `clip-aware-embeddings` · `computer-vision-pipeline` · `drone-cv-expert` · `drone-inspection-specialist` · `llm-streaming-response-handler` · `automatic-stateful-prompt-improver`

### Computer Vision & Graphics
`metal-shader-expert` · `photo-composition-critic` · `photo-content-recognition-curation-expert` · `pixel-art-scaler` · `collage-layout-expert` · `physics-rendering-expert` · `vr-avatar-engineer`

### Data & Visualization
`data-viz-2025` · `data-pipeline-engineer` · `geospatial-data-pipeline` · `large-scale-map-visualization` · `reactflow-expert` · `mermaid-graph-writer` · `mermaid-graph-renderer` · `diagramming-expert`

### Coaching & Career
`career-biographer` · `cv-creator` · `job-application-optimizer` · `hr-network-analyst` · `competitive-cartographer` · `personal-finance-coach` · `wisdom-accountability-coach` · `indie-monetization-strategist` · `tech-entrepreneur-coach-adhd` · `project-management-guru-adhd`

### Interview Prep
`senior-coding-interview` · `ml-system-design-interview` · `anthropic-technical-deep-dive` · `tech-presentation-interview` · `values-behavioral-interview` · `hiring-manager-deep-dive` · `interview-simulator` · `interview-loop-strategist`

### Health & Neuroscience
`adhd-design-expert` · `adhd-daily-planner` · `hrv-alexithymia-expert` · `speech-pathology-ai` · `clinical-diagnostic-reasoning` · `crisis-detection-intervention-ai` · `crisis-response-protocol`

### Recovery & Wellness
`recovery-app-onboarding` · `recovery-coach-patterns` · `recovery-community-moderator` · `recovery-education-writer` · `recovery-social-features` · `recovery-app-legal-terms` · `sober-addict-protector` · `sobriety-tools-guardian` · `modern-drug-rehab-computer` · `jungian-psychologist`

### Meta & Orchestration
`agent-creator` · `orchestrator` · `skill-coach` · `skill-architect` · `skill-creator` · `skill-documentarian` · `skill-grader` · `skill-logger` · `swift-executor` · `team-builder` · `research-analyst`

### Content & Communication
`technical-writer` · `email-composer` · `seo-visibility-expert` · `claude-ecosystem-promoter` · `video-processing-editing` · `ai-video-production-master` · `voice-audio-engineer` · `sound-engineer`

### Security & Auth
`security-auditor` · `oauth-oidc-implementer` · `modern-auth-2026`

### Specialized
`bot-developer` · `mcp-creator` · `real-time-collaboration-engine` · `websocket-streaming` · `background-job-orchestrator` · `document-generation-pdf` · `chatbot-analytics` · `event-detection-temporal-intelligence-expert` · `checklist-discipline` · `systems-thinking` · `human-centered-design-fundamentals`

### Lifestyle
`fancy-yard-landscaper` · `interior-design-expert` · `maximalist-wall-decorator` · `panic-room-finder` · `pet-memorial-creator` · `grief-companion` · `wedding-immortalist` · `partner-text-coach`

## Why This Fork Exists

The original repo ([curiositech/some_claude_skills](https://github.com/curiositech/some_claude_skills)) includes a full Docusaurus gallery website, 150MB+ of images, audio files, and broken git submodules. This makes it too large and fragile to import as a Claude Code plugin — `claude plugin add` chokes on the size and the submodule errors.

This fork strips everything except the skills themselves. Same 190+ skills, no website baggage, no broken submodules, clean plugin install.

## Contributing

1. Create `.claude/skills/<skill-name>/SKILL.md`
2. Include frontmatter: `name`, `description`, and trigger `metadata`
3. Add `references/` for supporting docs if needed
4. Submit a PR

## License

MIT — See [LICENSE](LICENSE)
