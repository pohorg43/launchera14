.class public final Lpantanal/app/instant/InstantCardImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lpantanal/app/InstantCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/app/instant/InstantCardImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/app/instant/InstantCardImpl$Companion;

.field private static final TAG:Ljava/lang/String; = "InstantCard"


# instance fields
.field private final cardCallback:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Lpantanal/app/instant/IInstantCardCallback;",
            ">;"
        }
    .end annotation
.end field

.field private cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

.field private final cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Lpantanal/app/instant/internal/MessageSet;",
            ">;"
        }
    .end annotation
.end field

.field private final cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final cardTag:Ljava/lang/String;

.field private final cardViewInfo:Lpantanal/app/bean/CardViewInfo;

.field private final cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/app/instant/internal/IInstantCardState<",
            "Lpantanal/app/instant/internal/VisibilityState;",
            ">;"
        }
    .end annotation
.end field

.field private final configuration:Lpantanal/app/bean/Configuration;

.field private context:Landroid/content/Context;

.field private final isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final messageSet:Lpantanal/app/instant/internal/MessageSet;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/app/instant/InstantCardImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/app/instant/InstantCardImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/app/instant/InstantCardImpl;->Companion:Lpantanal/app/instant/InstantCardImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lpantanal/app/bean/CardViewInfo;Lpantanal/app/bean/Configuration;)V
    .registers 5

    const-string v0, "cardViewInfo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    iput-object p3, p0, Lpantanal/app/instant/InstantCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p2}, Lpantanal/app/bean/CardViewInfoKt;->generateUniqueCardKey(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    new-instance p1, Lpantanal/app/instant/internal/MessageSet;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p1, p2, p3}, Lpantanal/app/instant/internal/MessageSet;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardVisibilityState;

    new-instance p2, Lpantanal/app/instant/InstantCardImpl$cardVisibilityState$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/InstantCardImpl$cardVisibilityState$1;-><init>(Lpantanal/app/instant/InstantCardImpl;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardVisibilityState;-><init>(Lpantanal/app/instant/internal/InstantCardVisibilityState$IVisibilityStateChange;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardScrollState;

    new-instance p2, Lpantanal/app/instant/InstantCardImpl$cardScrollState$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/InstantCardImpl$cardScrollState$1;-><init>(Lpantanal/app/instant/InstantCardImpl;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardScrollState;-><init>(Lpantanal/app/instant/internal/InstantCardScrollState$IScrollStateChange;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardMessageState;

    new-instance p2, Lpantanal/app/instant/InstantCardImpl$cardMessageState$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/InstantCardImpl$cardMessageState$1;-><init>(Lpantanal/app/instant/InstantCardImpl;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardMessageState;-><init>(Lpantanal/app/instant/internal/InstantCardMessageState$IMessageHandler;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    new-instance p1, Lpantanal/app/instant/internal/InstantCardMessageCallback;

    new-instance p2, Lpantanal/app/instant/InstantCardImpl$cardCallback$1;

    invoke-direct {p2, p0}, Lpantanal/app/instant/InstantCardImpl$cardCallback$1;-><init>(Lpantanal/app/instant/InstantCardImpl;)V

    invoke-direct {p1, p2}, Lpantanal/app/instant/internal/InstantCardMessageCallback;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardCallback:Lpantanal/app/instant/internal/IInstantCardState;

    return-void
.end method

.method public static final synthetic access$buildLogPreMsg(Lpantanal/app/instant/InstantCardImpl;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardEngine$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/instant/engine/InstantCardEngine;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    return-object p0
.end method

.method public static final synthetic access$getCardSize(Lpantanal/app/instant/InstantCardImpl;Landroid/os/Bundle;)Lpantanal/app/instant/internal/CardDesignSize;
    .registers 2

    invoke-direct {p0, p1}, Lpantanal/app/instant/InstantCardImpl;->getCardSize(Landroid/os/Bundle;)Lpantanal/app/instant/internal/CardDesignSize;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCardTag$p(Lpantanal/app/instant/InstantCardImpl;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getCardViewInfo$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/bean/CardViewInfo;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    return-object p0
.end method

.method public static final synthetic access$getConfiguration$p(Lpantanal/app/instant/InstantCardImpl;)Lpantanal/app/bean/Configuration;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    return-object p0
.end method

.method public static final synthetic access$getContext$p(Lpantanal/app/instant/InstantCardImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$initEngine(Lpantanal/app/instant/InstantCardImpl;)V
    .registers 1

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->initEngine()V

    return-void
.end method

.method private final buildLogPreMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {p0}, Lpantanal/app/bean/CardViewInfoKt;->buildLogPreMsg(Lpantanal/app/bean/CardViewInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCardSize(Landroid/os/Bundle;)Lpantanal/app/instant/internal/CardDesignSize;
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getSizeList()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Li4/v;->F(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    :try_start_14
    const-string v3, "key_instant_container_width"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v5, "key_instant_container_height"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "key_instant_design_size"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "key_instant_design_width"

    invoke-virtual {v0, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v4, :cond_35

    iget-object v3, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getWidth()I

    move-result v3

    :cond_35
    if-ne v5, v4, :cond_3d

    iget-object v5, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v5}, Lpantanal/app/bean/CardViewInfo;->getHeight()I

    move-result v5

    :cond_3d
    if-ne v6, v4, :cond_40

    move v6, v2

    :cond_40
    if-ne v0, v4, :cond_43

    goto :goto_44

    :cond_43
    move v4, v0

    :goto_44
    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "InstantCard"

    invoke-direct/range {p0 .. p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",getCardSize: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " realContainerWidth: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " realContainerHeight: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " realDesignSize: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "realDesignWidth: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Lpantanal/app/instant/internal/CardDesignSize;

    invoke-direct {v0, v3, v5, v6, v4}, Lpantanal/app/instant/internal/CardDesignSize;-><init>(IIII)V
    :try_end_94
    .catchall {:try_start_14 .. :try_end_94} :catchall_95

    goto :goto_9a

    :catchall_95
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_9a
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_d0

    sget-object v4, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v3

    const-string v5, ",load get value from bundle error"

    invoke-static {v3, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v15, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "InstantCard"

    move v7, v15

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v3, Lpantanal/app/instant/internal/CardDesignSize;

    iget-object v4, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v4}, Lpantanal/app/bean/CardViewInfo;->getWidth()I

    move-result v4

    iget-object v5, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v5}, Lpantanal/app/bean/CardViewInfo;->getHeight()I

    move-result v5

    const/16 v8, 0x8

    const/4 v9, 0x0

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lpantanal/app/instant/internal/CardDesignSize;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_d0
    new-instance v10, Lpantanal/app/instant/internal/CardDesignSize;

    iget-object v3, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v3}, Lpantanal/app/bean/CardViewInfo;->getWidth()I

    move-result v4

    iget-object v1, v1, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getHeight()I

    move-result v5

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, v10

    move v6, v2

    invoke-direct/range {v3 .. v9}, Lpantanal/app/instant/internal/CardDesignSize;-><init>(IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    instance-of v1, v0, Lh4/k$a;

    if-eqz v1, :cond_ec

    move-object v0, v10

    :cond_ec
    check-cast v0, Lpantanal/app/instant/internal/CardDesignSize;

    return-object v0
.end method

.method private final initEngine()V
    .registers 12

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-nez v0, :cond_44

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0x14

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lz8/a;->b(Lz8/a;IIZILjava/lang/Object;)Lz8/a;

    new-instance v0, Lpantanal/app/instant/engine/InstantCardEngine;

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {v2}, Lpantanal/app/bean/Configuration;->getLauncherInterceptor()Lpantanal/app/ILaunchInterceptor;

    move-result-object v2

    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {v3}, Lpantanal/app/bean/Configuration;->getInstantConfiguration()Lpantanal/app/instant/InstantConfiguration;

    move-result-object v3

    iget-object v4, p0, Lpantanal/app/instant/InstantCardImpl;->configuration:Lpantanal/app/bean/Configuration;

    invoke-virtual {v4}, Lpantanal/app/bean/Configuration;->getEnableV2Callback()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lpantanal/app/instant/engine/InstantCardEngine;-><init>(Ljava/lang/String;Lpantanal/app/ILaunchInterceptor;Lpantanal/app/instant/InstantConfiguration;Z)V

    iput-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v0}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v0}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v0}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardCallback:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {p0}, Lpantanal/app/instant/internal/IInstantCardState;->invoke()V

    goto :goto_56

    :cond_44
    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCard"

    const-string v2, "initEngine do nothing,because cardEngine is not null."

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_56
    return-void
.end method

.method private final loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 5

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v1, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;

    invoke-direct {v1, p0, p2, p1}, Lpantanal/app/instant/InstantCardImpl$loadInternal$1;-><init>(Lpantanal/app/instant/InstantCardImpl;Lpantanal/app/OnLoadCallback;Landroid/os/Bundle;)V

    const-string p0, "1300"

    invoke-static {p0, v0, v1}, Ly5/p;->b(Ljava/lang/String;Lpantanal/app/bean/CardViewInfo;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public getCardType()Lpantanal/app/bean/CardCategory;
    .registers 1

    sget-object p0, Lpantanal/app/bean/CardCategory;->INSTANT:Lpantanal/app/bean/CardCategory;

    return-object p0
.end method

.method public getInnerCard()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->getCard()Lorg/hapjs/card/api/Card;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public getUIData()Lpantanal/app/bean/PantanalUIData;
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    const-string v2, ",getUIData: "

    const-string v3, "  return null"

    invoke-static {v1, v2, p0, v3}, Landroidx/core/animation/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lpantanal/app/instant/engine/InstantCardEngine;->getLastRenderView()Landroid/view/View;

    move-result-object p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public load(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "bundle"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    move-object/from16 v3, p2

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v2}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v2

    const/16 v4, 0x190

    const/16 v5, 0xb

    invoke-virtual {v2, v4, v5}, Lz8/c;->A(II)V

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-direct/range {p0 .. p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v6, v0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",begin to load with bundle: "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",cardInfo:"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "InstantCard"

    move-object v6, v2

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    const-string v4, "key_ui_data"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6b

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_63

    const/4 v5, 0x1

    goto :goto_64

    :cond_63
    const/4 v5, 0x0

    :goto_64
    if-eqz v5, :cond_6b

    iget-object v5, v0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v5, v4}, Lpantanal/app/bean/CardViewInfo;->setInstantUri(Ljava/lang/String;)V

    :cond_6b
    iget-object v4, v0, Lpantanal/app/instant/InstantCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_8d

    invoke-direct/range {p0 .. p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v4

    const-string v5, ", begin to load but card is release"

    invoke-static {v4, v5}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xfc

    const/16 v16, 0x0

    const-string v7, "InstantCard"

    move-object v6, v2

    invoke-static/range {v6 .. v16}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_8d
    invoke-direct/range {p0 .. p2}, Lpantanal/app/instant/InstantCardImpl;->loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    return-void
.end method

.method public load(Lpantanal/app/OnLoadCallback;)V
    .registers 14

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    const-string v3, ",load: "

    invoke-static {v0, v3, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "InstantCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x190

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lz8/c;->A(II)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0, p1}, Lpantanal/app/instant/InstantCardImpl;->loadInternal(Landroid/os/Bundle;Lpantanal/app/OnLoadCallback;)V

    return-void
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onDragEnd(Z)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public onDragStart()V
    .registers 1

    return-void
.end method

.method public onForceUpdate(Lpantanal/app/ICardLifecycle$LifeCycleValue;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/InstantCard$DefaultImpls;->onForceUpdate(Lpantanal/app/InstantCard;Lpantanal/app/ICardLifecycle$LifeCycleValue;)V

    return-void
.end method

.method public onHide()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onInvisible: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", engine is null: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->onCardInVisible()V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    if-nez v0, :cond_58

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    sget-object v0, Lpantanal/app/instant/internal/VisibilityState;->INVISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    invoke-interface {p0, v0}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_58
    return-void
.end method

.method public onHostChange(Ljava/lang/String;)V
    .registers 14

    const-string v0, "jsonString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",onHostChange: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " jsonString = "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "InstantCard"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    return-void
.end method

.method public onRenderFailed()V
    .registers 1

    invoke-static {p0}, Lpantanal/app/InstantCard$DefaultImpls;->onRenderFailed(Lpantanal/app/InstantCard;)V

    return-void
.end method

.method public onScrollState(I)V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onScrollState: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v1, "InstantCard"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Lpantanal/app/instant/engine/InstantCardEngine;->setScrollState(I)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    if-nez v0, :cond_48

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_48
    return-void
.end method

.method public onShow()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-nez v3, :cond_e

    const/4 v3, 0x1

    goto :goto_f

    :cond_e
    const/4 v3, 0x0

    :goto_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",onVisible: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", engine is null: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Lz8/c;->k(I)Lz8/a;

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->onCardVisible()V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_4f

    :cond_4e
    const/4 v0, 0x0

    :goto_4f
    if-nez v0, :cond_58

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    sget-object v0, Lpantanal/app/instant/internal/VisibilityState;->VISIBLE:Lpantanal/app/instant/internal/VisibilityState;

    invoke-interface {p0, v0}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_58
    return-void
.end method

.method public onSubscribe()V
    .registers 1

    return-void
.end method

.method public onUnsubscribe()V
    .registers 1

    return-void
.end method

.method public registerCardMessageCallback(Lpantanal/app/instant/IInstantCardCallback;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_14

    iget-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lpantanal/app/instant/engine/InstantCardEngine;->clearMessageCallback()V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :cond_c
    if-nez v0, :cond_24

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardCallback:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {p0}, Lpantanal/app/instant/internal/IInstantCardState;->clear()V

    goto :goto_24

    :cond_14
    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Lpantanal/app/instant/engine/InstantCardEngine;->setCardMessageCallback(Lpantanal/app/instant/IInstantCardCallback;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    :cond_1d
    if-nez v0, :cond_24

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardCallback:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {p0, p1}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_24
    :goto_24
    return-void
.end method

.method public release()V
    .registers 13

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    const/4 v11, 0x1

    if-nez v3, :cond_f

    move v3, v11

    goto :goto_10

    :cond_f
    const/4 v3, 0x0

    :goto_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",release: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", engine is null: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/16 v1, 0x44c

    invoke-virtual {v0, v1, v11}, Lz8/c;->A(II)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lpantanal/app/instant/engine/InstantCardEngine;->releaseView()V

    :cond_4c
    const/4 v0, 0x0

    iput-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardScrollState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v1}, Lpantanal/app/instant/internal/IInstantCardState;->clear()V

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardVisibilityState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v1}, Lpantanal/app/instant/internal/IInstantCardState;->clear()V

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v1}, Lpantanal/app/instant/internal/IInstantCardState;->clear()V

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardCallback:Lpantanal/app/instant/internal/IInstantCardState;

    invoke-interface {v1}, Lpantanal/app/instant/internal/IInstantCardState;->clear()V

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v1}, Lpantanal/app/instant/internal/MessageSet;->getMessageSend()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v1}, Lpantanal/app/instant/internal/MessageSet;->getMessageReply()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->isRelease:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iput-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->context:Landroid/content/Context;

    sget-object v0, Lz8/f;->f:Lz8/f$a;

    invoke-virtual {v0}, Lz8/f$a;->a()Lz8/f;

    move-result-object v0

    iget-object v1, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v1}, Lpantanal/app/bean/CardViewInfo;->getType()I

    move-result v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {v2}, Lpantanal/app/bean/CardViewInfo;->getCardId()I

    move-result v2

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-virtual {p0}, Lpantanal/app/bean/CardViewInfo;->getHostId()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lz8/f;->e(III)V

    return-void
.end method

.method public releaseView()V
    .registers 12

    sget-object v0, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-nez v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    :goto_d
    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", releaseView engine is null:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xfc

    const/4 v10, 0x0

    const-string v1, "InstantCard"

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardViewInfo:Lpantanal/app/bean/CardViewInfo;

    invoke-static {v0}, Lpantanal/app/bean/CardViewInfoKt;->getLoadEvent(Lpantanal/app/bean/CardViewInfo;)Lz8/c;

    move-result-object v0

    const/4 v1, 0x2

    const/16 v2, 0x44c

    invoke-virtual {v0, v2, v1}, Lz8/c;->A(II)V

    invoke-virtual {p0}, Lpantanal/app/instant/InstantCardImpl;->release()V

    return-void
.end method

.method public replyMessage(ILjava/lang/String;)V
    .registers 15

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",replyMessage: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", engine is null: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCard"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v0, :cond_50

    invoke-virtual {v0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine;->replyMessageToCard(ILjava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-nez v0, :cond_67

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v0}, Lpantanal/app/instant/internal/MessageSet;->getMessageReply()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-interface {p1, p0}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_67
    return-void
.end method

.method public sendMessage(ILjava/lang/String;)V
    .registers 15

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    invoke-direct {p0}, Lpantanal/app/instant/InstantCardImpl;->buildLogPreMsg()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lpantanal/app/instant/InstantCardImpl;->cardTag:Ljava/lang/String;

    iget-object v3, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-nez v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",sendMessage: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", code: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", engine is null: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "InstantCard"

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->cardEngine:Lpantanal/app/instant/engine/InstantCardEngine;

    if-eqz v0, :cond_50

    invoke-virtual {v0, p1, p2}, Lpantanal/app/instant/engine/InstantCardEngine;->sendMessageToCard(ILjava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    if-nez v0, :cond_67

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-virtual {v0}, Lpantanal/app/instant/internal/MessageSet;->getMessageSend()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lpantanal/app/instant/InstantCardImpl;->cardMessageState:Lpantanal/app/instant/internal/IInstantCardState;

    iget-object p0, p0, Lpantanal/app/instant/InstantCardImpl;->messageSet:Lpantanal/app/instant/internal/MessageSet;

    invoke-interface {p1, p0}, Lpantanal/app/instant/internal/IInstantCardState;->updateValue(Ljava/lang/Object;)V

    :cond_67
    return-void
.end method

.method public setUIDataInterceptor(Lpantanal/app/UIDataInterceptor;)V
    .registers 2

    invoke-static {p0, p1}, Lpantanal/app/InstantCard$DefaultImpls;->setUIDataInterceptor(Lpantanal/app/InstantCard;Lpantanal/app/UIDataInterceptor;)V

    return-void
.end method
