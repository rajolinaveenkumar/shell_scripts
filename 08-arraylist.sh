tools=("git" "jenkins")
tools+=("grafana")
tools+=("docker")
echo "All tools: ${tools[@]}"  # Output: git jenkins grafana

echo "All tools: ${tools[0]}" 
echo "All tools: ${tools[1]}" 
echo "All tools: ${tools[2]}" 
echo "All tools: ${tools[3]}" 