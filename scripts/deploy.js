async function main() {
  const SujalToken = await ethers.getContractFactory("SujalToken");
  const sujalToken = await SujalToken.deploy("Sujal Token", "SUJAL", 1000000);

  console.log("SujalToken deployed to:", sujalToken.address);
}

main().then(() => process.exit(0)).catch(error => {
  console.error(error);
  process.exit(1);
});