.class Lcom/oplus/log/core/LoganThread$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/core/OnLoganProtocolStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/core/LoganThread;->action(Lcom/oplus/log/core/LoganModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/core/LoganThread;


# direct methods
.method public constructor <init>(Lcom/oplus/log/core/LoganThread;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/LoganThread$1;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loganProtocolStatus(Ljava/lang/String;I)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/core/LoganThread$1;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {v0}, Lcom/oplus/log/core/LoganThread;->access$000(Lcom/oplus/log/core/LoganThread;)Lcom/oplus/log/core/OnLoganProtocolStatus;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lcom/oplus/log/core/LoganThread$1;->this$0:Lcom/oplus/log/core/LoganThread;

    invoke-static {p0}, Lcom/oplus/log/core/LoganThread;->access$000(Lcom/oplus/log/core/LoganThread;)Lcom/oplus/log/core/OnLoganProtocolStatus;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/oplus/log/core/OnLoganProtocolStatus;->loganProtocolStatus(Ljava/lang/String;I)V

    :cond_11
    return-void
.end method
