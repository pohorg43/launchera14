.class public final synthetic Lcom/android/common/util/d0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic b:Lcom/android/common/util/d0;

.field public static final synthetic c:Lcom/android/common/util/d0;

.field public static final synthetic d:Lcom/android/common/util/d0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->b:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->c:Lcom/android/common/util/d0;

    new-instance v0, Lcom/android/common/util/d0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/common/util/d0;-><init>(I)V

    sput-object v0, Lcom/android/common/util/d0;->d:Lcom/android/common/util/d0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/util/d0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    iget p0, p0, Lcom/android/common/util/d0;->a:I

    packed-switch p0, :pswitch_data_2a

    goto :goto_14

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/appprediction/PredictionRowView;->b(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :pswitch_d  #0x0
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {p1}, Lcom/android/common/util/LauncherLayoutUtils;->f(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0

    :goto_14
    check-cast p1, Lp8/g;

    iget-wide v0, p1, Lp8/g;->a:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gtz p0, :cond_27

    iget-wide p0, p1, Lp8/g;->b:J

    cmp-long p0, p0, v2

    if-lez p0, :cond_25

    goto :goto_27

    :cond_25
    const/4 p0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 p0, 0x1

    :goto_28
    return p0

    nop

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_d  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
