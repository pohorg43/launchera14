.class public interface abstract Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugininterface/IPluginGroupCard$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
.end method

.method public abstract destroy(Landroid/content/Context;)V
.end method

.method public abstract init(Landroid/content/Context;Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)V
.end method
