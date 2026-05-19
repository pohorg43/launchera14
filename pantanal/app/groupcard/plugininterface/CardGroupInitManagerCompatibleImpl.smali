.class public Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/groupcard/plugininterface/ICardGroupInitManager;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "CardGroupInitManagerCompatibleImpl"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl;->Companion:Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl$Companion;

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

    const-string v1, "CardGroupInitManagerCompatibleImpl"

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
.method public exchangeVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "sdkVersionName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "sdkVersionCode"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "exchangeVersion"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0
.end method

.method public initSdk(Landroid/content/Context;)V
    .registers 3

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "initSdk"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public onTrimMemory(I)V
    .registers 2

    const-string p1, "onTrimMemory"

    invoke-direct {p0, p1}, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method

.method public releaseSdk()V
    .registers 2

    const-string v0, "releaseSdk"

    invoke-direct {p0, v0}, Lpantanal/app/groupcard/plugininterface/CardGroupInitManagerCompatibleImpl;->defaultLog(Ljava/lang/String;)V

    return-void
.end method
