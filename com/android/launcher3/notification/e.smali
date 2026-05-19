.class public final synthetic Lcom/android/launcher3/notification/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/notification/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/notification/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/notification/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/android/launcher3/notification/e;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/notification/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationListener;->a(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)Ljava/util/concurrent/Future;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object p0, p0, Lcom/android/launcher3/notification/e;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
