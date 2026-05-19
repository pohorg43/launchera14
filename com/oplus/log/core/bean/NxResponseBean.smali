.class public Lcom/oplus/log/core/bean/NxResponseBean;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public data:Ljava/lang/String;

.field public msg:Ljava/lang/String;

.field public status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/bean/NxResponseBean;->data:Ljava/lang/String;

    return-object p0
.end method

.method public getMsg()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/core/bean/NxResponseBean;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public getStatus()I
    .registers 1

    iget p0, p0, Lcom/oplus/log/core/bean/NxResponseBean;->status:I

    return p0
.end method

.method public setData(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/bean/NxResponseBean;->data:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/bean/NxResponseBean;->msg:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/log/core/bean/NxResponseBean;->status:I

    return-void
.end method
