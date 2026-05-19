.class public final Lpantanal/app/groupcard/plugininterface/IPluginGroupCard$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static synthetic createGroupCard$default(Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;ILjava/lang/Object;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 6

    if-nez p5, :cond_c

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_7

    const/4 p3, 0x0

    :cond_7
    invoke-interface {p0, p1, p2, p3}, Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;->createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;

    move-result-object p0

    return-object p0

    :cond_c
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createGroupCard"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
