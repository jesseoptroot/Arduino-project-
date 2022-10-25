size(500, 500);

int vierkant = 40; 
int LinksBoven = 50;
int LinksOnder = (width - vierkant) - LinksBoven;
int RechtsBoven = (height - vierkant) - LinksBoven;

//vierkantLinksBoven
rect(LinksBoven, LinksBoven, vierkant, vierkant);

//vierkantLinksOnder
rect(LinksBoven, LinksOnder, vierkant, vierkant);

//vierkantRechtsBoven
rect(RechtsBoven, LinksBoven, vierkant, vierkant);

//vierkantRechtsOnder
rect(RechtsBoven, LinksOnder, vierkant, vierkant);
