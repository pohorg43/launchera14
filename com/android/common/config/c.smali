.class public final synthetic Lcom/android/common/config/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/common/config/c;

.field public static final synthetic c:Lcom/android/common/config/c;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/config/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/config/c;-><init>(I)V

    sput-object v0, Lcom/android/common/config/c;->b:Lcom/android/common/config/c;

    new-instance v0, Lcom/android/common/config/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/config/c;-><init>(I)V

    sput-object v0, Lcom/android/common/config/c;->c:Lcom/android/common/config/c;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/common/config/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/common/config/c;->a:I

    packed-switch p0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x0
    invoke-static {}, Lcom/android/common/config/FeatureOption;->a()V

    return-void

    :goto_a
    invoke-static {}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->n0()V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
