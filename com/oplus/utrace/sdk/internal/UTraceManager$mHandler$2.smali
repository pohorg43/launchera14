.class final Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/sdk/internal/UTraceManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;

    invoke-direct {v0}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;-><init>()V

    sput-object v0, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;->INSTANCE:Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;
    .registers 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    new-instance v0, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    invoke-direct {v0, p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2;->invoke()Lcom/oplus/utrace/sdk/internal/UTraceManager$mHandler$2$1;

    move-result-object p0

    return-object p0
.end method
