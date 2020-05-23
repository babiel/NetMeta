package k8s

NetMetaConfig :: {
	// Size of the goflow sFlow/IPFIX ingestion queue. Keeping
	// a larger queue allows for backprocessing of longer periods of historical data.
	goflowTopicRetention: *1_000_000_000 | int // GB

	// Kubernetes namespace
	namespace: *"default" | string

	// ClickHouse write credentials
	clickhouseOperatorPassword: string

	// Let's Encrypt Account Email Address
	letsencryptAccountMail: string

	// Public hostname
	publicHostname: string

	// Initial Grafana admin password
	// (after the first deployment, it can only be changed within Grafana)
	grafanaInitialAdminPassword: string
}

NetMetaImages ::
	helloworld: string
