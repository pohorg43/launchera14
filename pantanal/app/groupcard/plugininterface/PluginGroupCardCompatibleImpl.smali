.class public Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/plugininterface/IPluginGroupCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "PluginGroupCardCompatibleImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl;->Companion:Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final defaultLog(Ljava/lang/String;)V
    .registers 13

    const-string p0, "warning, default impl! maybe version is not compatible, methodName:"

    invoke-static {p0, p1}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Ly8/c;->a:Ly8/c;

    const-string v1, "PluginGroupCardCompatibleImpl"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public createGroupCard(Landroid/content/Context;Lpantanal/app/groupcard/GroupCardInfo;Landroid/os/Bundle;)Lpantanal/app/groupcard/plugininterface/IGroupCard;
    .registers 4

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "groupCardInfo"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "createGroupCard"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public destroy(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "destroy"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public init(Landroid/content/Context;Lpantanal/app/groupcard/ICardCreator;Lpantanal/app/groupcard/IServiceDecisionProxy;Lpantanal/app/groupcard/IContentManagerProxy;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cardCreator"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "decisionProxy"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contentManagerProxy"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "init"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/PluginGroupCardCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method
