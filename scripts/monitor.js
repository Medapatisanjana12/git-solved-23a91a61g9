const ENV=process.env.NODE_ENV || 'production';

const monitorConfig = {
  production:{
  interval: 60000, // 1 minute
  alertThreshold: 80,
  debugMode:false
  },
  development:{
   interval:5000,
   alertThreshold:90,
   debugMode:true,
   verboseLogging:true
}
};

const config=monitorConfig[ENV];

console.log('=================================');
console.log('DevOps Simulator - Monitor');
console.log('Environment:${ENV}');
console.log('Debug:${config.debugMode ? 'ENABLED':'DISABLED'}');
console.log('=================================');

function checkSystemHealth() {
  const timestamp=new Date().toISOString();
  if (config.degubMode){
  console.log('\n[${timestamp}]===DETAILED HEALTH CHECK ===');
  }
  else{
   console.log('[${timestamp}] Checking system health...');
  }
  
  // Check CPU usage
  console.log('✓ CPU usage: Normal');
  
  // Check Memory
  console.log('✓ Memory usage: Normal');
  
  // Check Disk
  console.log('✓ Disk space: Adequate');

if(config.debugMode){
console.log('Hot reload:Active');
console.log('Debug port:9229');
}
  console.log('System Status: HEALTHY');
}

// Start monitoring
console.log(`Monitoring every ${config.interval}ms`);
setInterval(checkSystemHealth, Config.interval);

// Run first check immediately
checkSystemHealth();
