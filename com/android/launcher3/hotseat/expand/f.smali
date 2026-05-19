.class public final synthetic Lcom/android/launcher3/hotseat/expand/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/hotseat/expand/f;

.field public static final synthetic c:Lcom/android/launcher3/hotseat/expand/f;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/hotseat/expand/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/expand/f;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/f;->b:Lcom/android/launcher3/hotseat/expand/f;

    new-instance v0, Lcom/android/launcher3/hotseat/expand/f;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/hotseat/expand/f;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/hotseat/expand/f;->c:Lcom/android/launcher3/hotseat/expand/f;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/hotseat/expand/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget p0, p0, Lcom/android/launcher3/hotseat/expand/f;->a:I

    packed-switch p0, :pswitch_data_e

    goto :goto_a

    :pswitch_6  #0x0
    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->a()V

    return-void

    :goto_a
    invoke-static {}, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;->a()V

    return-void

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
