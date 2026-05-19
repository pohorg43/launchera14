.class public final Lcom/oplus/utrace/hlog/UploadFlag$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/utrace/hlog/UploadFlag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/utrace/hlog/UploadFlag$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final from(I)Lcom/oplus/utrace/hlog/UploadFlag;
    .registers 7

    invoke-static {}, Lcom/oplus/utrace/hlog/UploadFlag;->values()[Lcom/oplus/utrace/hlog/UploadFlag;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :cond_7
    if-ge v2, v0, :cond_19

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Lcom/oplus/utrace/hlog/UploadFlag;->getValue()I

    move-result v4

    if-ne v4, p1, :cond_15

    const/4 v4, 0x1

    goto :goto_16

    :cond_15
    move v4, v1

    :goto_16
    if-eqz v4, :cond_7

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    return-object v3
.end method
