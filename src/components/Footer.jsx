import Typography from "@mui/joy/Typography";
import Constants from "../utils/Constants";
import Spacer from "./Spacer";

function Footer() {
	return (
		<>
			<Spacer spacerForClass="footer" />
			<div className="footer">
				<Typography color="neutral" level="body-xs" sx={{ fontStyle: "italic" }}>
					An{" "}
					<a href="https://github.com/anushibin007" target="_blank">
						anushibin007
					</a>{" "}
					Side Project // Contribute on{" "}
					<a href="https://github.com/anushibin007/room-inator" target="_blank">
						GitHub
					</a>{" "}
					// Version: {Constants.BUILD_NUMBER}
				</Typography>
			</div>
		</>
	);
}

export default Footer;
