.class final Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/utrace/lib/NodeID;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/utrace/lib/NodeID;


# direct methods
.method public constructor <init>(Lcom/oplus/utrace/lib/NodeID;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;->this$0:Lcom/oplus/utrace/lib/NodeID;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;->invoke()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final invoke()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;->this$0:Lcom/oplus/utrace/lib/NodeID;

    invoke-static {v1}, Lcom/oplus/utrace/lib/NodeID;->access$getSpanID$p(Lcom/oplus/utrace/lib/NodeID;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oplus/utrace/lib/NodeID$composedSpanId$2;->this$0:Lcom/oplus/utrace/lib/NodeID;

    invoke-static {p0}, Lcom/oplus/utrace/lib/NodeID;->access$getSequence$p(Lcom/oplus/utrace/lib/NodeID;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
