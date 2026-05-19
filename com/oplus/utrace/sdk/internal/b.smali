.class public final synthetic Lcom/oplus/utrace/sdk/internal/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic a:Lcom/oplus/utrace/sdk/internal/b;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/internal/b;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/b;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/b;->a:Lcom/oplus/utrace/sdk/internal/b;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    invoke-static {}, Lcom/oplus/utrace/sdk/internal/UTraceManager;->a()V

    return-void
.end method
