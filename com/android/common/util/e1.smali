.class public final synthetic Lcom/android/common/util/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .registers 4

    iput p2, p0, Lcom/android/common/util/e1;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/e1;->b:I

    return-void

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/common/util/e1;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/common/util/e1;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget p0, p0, Lcom/android/common/util/e1;->b:I

    invoke-static {p0}, Lcom/android/launcher/predictedapps/PredictedAppManager;->b(I)V

    return-void

    :pswitch_c  #0x0
    iget p0, p0, Lcom/android/common/util/e1;->b:I

    invoke-static {p0}, Lcom/android/common/util/VibrationUtils;->b(I)V

    return-void

    :goto_12
    iget p0, p0, Lcom/android/common/util/e1;->b:I

    invoke-static {p0}, Lcom/oplus/quickstep/receiver/OplusHoraeThermalHelper$receiver$1;->a(I)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
