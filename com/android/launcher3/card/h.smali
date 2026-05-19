.class public final synthetic Lcom/android/launcher3/card/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher3/card/h;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/h;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/card/h;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/launcher3/card/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void

    :pswitch_c  #0x0
    iget-object p0, p0, Lcom/android/launcher3/card/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/LauncherCardUtil;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void

    :goto_12
    iget-object p0, p0, Lcom/android/launcher3/card/h;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
