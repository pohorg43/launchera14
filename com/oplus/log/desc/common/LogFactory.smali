.class public Lcom/oplus/log/desc/common/LogFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createLogDetail(ILjava/lang/String;)Lcom/oplus/log/desc/model/LogDetailModel;
    .registers 3

    const/16 v0, 0x65

    if-eq p0, v0, :cond_a

    new-instance p0, Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-direct {p0}, Lcom/oplus/log/desc/model/LogDetailModel;-><init>()V

    goto :goto_f

    :cond_a
    new-instance p0, Lcom/oplus/log/desc/model/LogDetailModel;

    invoke-direct {p0}, Lcom/oplus/log/desc/model/LogDetailModel;-><init>()V

    :goto_f
    invoke-virtual {p0, p1}, Lcom/oplus/log/desc/model/LogDetailModel;->parseFromJson(Ljava/lang/String;)Lcom/oplus/log/desc/model/LogDetailModel;

    move-result-object p0

    return-object p0
.end method
