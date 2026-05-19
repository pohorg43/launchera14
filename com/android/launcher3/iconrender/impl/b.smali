.class public final synthetic Lcom/android/launcher3/iconrender/impl/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

.field public final synthetic c:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;FI)V
    .registers 5

    iput p4, p0, Lcom/android/launcher3/iconrender/impl/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    iput-object p2, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iput p3, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/iconrender/impl/b;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->b(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/b;->b:Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/b;->c:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget p0, p0, Lcom/android/launcher3/iconrender/impl/b;->d:F

    invoke-static {v0, v1, p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->a(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
