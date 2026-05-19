.class Lcom/oplus/log/core/WriteAction;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public flag:I

.field public level:B

.field public localTime:J

.field public log:Ljava/lang/String;

.field public spanContext:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public threadId:J

.field public threadName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/oplus/log/core/WriteAction;->threadName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/WriteAction;->log:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
