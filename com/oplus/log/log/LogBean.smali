.class public Lcom/oplus/log/log/LogBean;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COMMON_LOG_TYPE:I = 0x0

.field public static final EVENT_LOG_TYPE:I = 0x1


# instance fields
.field private event:Lcom/oplus/log/collect/LoggingEvent;

.field private level:B

.field private log:Ljava/lang/String;

.field private logType:I

.field private mark:I

.field private showConsole:Z

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/log/LogBean;->mark:I

    iput-object p2, p0, Lcom/oplus/log/log/LogBean;->tag:Ljava/lang/String;

    iput-byte p1, p0, Lcom/oplus/log/log/LogBean;->level:B

    iput-object p3, p0, Lcom/oplus/log/log/LogBean;->log:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/log/LogBean;->mark:I

    iput-object p2, p0, Lcom/oplus/log/log/LogBean;->tag:Ljava/lang/String;

    iput-byte p1, p0, Lcom/oplus/log/log/LogBean;->level:B

    iput-object p3, p0, Lcom/oplus/log/log/LogBean;->log:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/oplus/log/log/LogBean;->showConsole:Z

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/collect/LoggingEvent;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/log/log/LogBean;->mark:I

    iput-object p1, p0, Lcom/oplus/log/log/LogBean;->event:Lcom/oplus/log/collect/LoggingEvent;

    iput p2, p0, Lcom/oplus/log/log/LogBean;->logType:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/oplus/log/log/LogBean;->mark:I

    return-void
.end method


# virtual methods
.method public getEvent()Lcom/oplus/log/collect/LoggingEvent;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/LogBean;->event:Lcom/oplus/log/collect/LoggingEvent;

    return-object p0
.end method

.method public getLevel()B
    .registers 1

    iget-byte p0, p0, Lcom/oplus/log/log/LogBean;->level:B

    return p0
.end method

.method public getLog()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/LogBean;->log:Ljava/lang/String;

    return-object p0
.end method

.method public getLogType()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/log/LogBean;->logType:I

    return p0
.end method

.method public getMark()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/log/LogBean;->mark:I

    return p0
.end method

.method public getTag()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/log/LogBean;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public isShowConsole()Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/log/log/LogBean;->showConsole:Z

    return p0
.end method

.method public setEvent(Lcom/oplus/log/collect/LoggingEvent;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/log/LogBean;->event:Lcom/oplus/log/collect/LoggingEvent;

    return-void
.end method

.method public setLevel(B)V
    .registers 2

    iput-byte p1, p0, Lcom/oplus/log/log/LogBean;->level:B

    return-void
.end method

.method public setLog(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/log/LogBean;->log:Ljava/lang/String;

    return-void
.end method

.method public setLogType(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/log/LogBean;->logType:I

    return-void
.end method

.method public setMark(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/log/LogBean;->mark:I

    return-void
.end method

.method public setShowConsole(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/log/log/LogBean;->showConsole:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/log/LogBean;->tag:Ljava/lang/String;

    return-void
.end method
