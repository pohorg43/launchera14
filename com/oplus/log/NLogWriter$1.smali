.class Lcom/oplus/log/NLogWriter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/core/OnLoganProtocolStatus;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/NLogWriter;->init(Lcom/oplus/log/Settings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/NLogWriter;


# direct methods
.method public constructor <init>(Lcom/oplus/log/NLogWriter;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/NLogWriter$1;->this$0:Lcom/oplus/log/NLogWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loganProtocolStatus(Ljava/lang/String;I)V
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "loganProtocolStatus: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NLogWriter"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
