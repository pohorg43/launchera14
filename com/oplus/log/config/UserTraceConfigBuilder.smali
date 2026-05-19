.class public Lcom/oplus/log/config/UserTraceConfigBuilder;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private console:I

.field private level:I

.field private maxLogSize:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Ly3/a;
    .registers 3

    new-instance v0, Ly3/a;

    invoke-direct {v0}, Ly3/a;-><init>()V

    iget v1, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->level:I

    iput v1, v0, Ly3/a;->h:I

    iget p0, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->console:I

    iput p0, v0, Ly3/a;->i:I

    return-object v0
.end method

.method public getConsole()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->console:I

    return p0
.end method

.method public getLevel()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->level:I

    return p0
.end method

.method public getMaxLogSize()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->maxLogSize:I

    return p0
.end method

.method public setConsole(I)Lcom/oplus/log/config/UserTraceConfigBuilder;
    .registers 2

    iput p1, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->console:I

    return-object p0
.end method

.method public setLevel(I)Lcom/oplus/log/config/UserTraceConfigBuilder;
    .registers 2

    iput p1, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->level:I

    return-object p0
.end method

.method public setMaxLogSize(I)Lcom/oplus/log/config/UserTraceConfigBuilder;
    .registers 2

    iput p1, p0, Lcom/oplus/log/config/UserTraceConfigBuilder;->maxLogSize:I

    return-object p0
.end method
