.class public final Lcom/oplus/card/util/DispatchersUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CARD_MODEL_THREAD_NAME:Ljava/lang/String; = "card_model_thread"

.field private static final CARD_SERVER_THREAD_NAME:Ljava/lang/String; = "card_server_thread"

.field public static final INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

.field private static final cardServerDispatcher$delegate:Lh4/f;

.field private static final modelDispatcher$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/card/util/DispatchersUtil;

    invoke-direct {v0}, Lcom/oplus/card/util/DispatchersUtil;-><init>()V

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil;

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil$modelDispatcher$2;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil$modelDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil;->modelDispatcher$delegate:Lh4/f;

    sget-object v0, Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;->INSTANCE:Lcom/oplus/card/util/DispatchersUtil$cardServerDispatcher$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/card/util/DispatchersUtil;->cardServerDispatcher$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCardServerDispatcher()Lm7/j1;
    .registers 1

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->cardServerDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/j1;

    return-object p0
.end method

.method private final getModelDispatcher()Lm7/j1;
    .registers 1

    sget-object p0, Lcom/oplus/card/util/DispatchersUtil;->modelDispatcher$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm7/j1;

    return-object p0
.end method


# virtual methods
.method public final cardServer()Lm7/f0;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/util/DispatchersUtil;->getCardServerDispatcher()Lm7/j1;

    move-result-object p0

    return-object p0
.end method

.method public final default()Lm7/f0;
    .registers 1

    sget-object p0, Lm7/y0;->b:Lm7/f0;

    return-object p0
.end method

.method public final io()Lm7/f0;
    .registers 1

    sget-object p0, Lm7/y0;->d:Lm7/f0;

    return-object p0
.end method

.method public final main()Lm7/f0;
    .registers 1

    sget-object p0, Lm7/y0;->a:Lm7/y0;

    sget-object p0, Lr7/v;->a:Lm7/b2;

    return-object p0
.end method

.method public final model()Lm7/f0;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/card/util/DispatchersUtil;->getModelDispatcher()Lm7/j1;

    move-result-object p0

    return-object p0
.end method

.method public final unconfined()Lm7/f0;
    .registers 1

    sget-object p0, Lm7/y0;->c:Lm7/f0;

    return-object p0
.end method
