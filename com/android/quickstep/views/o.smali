.class public final synthetic Lcom/android/quickstep/views/o;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic b:Lcom/android/quickstep/views/o;

.field public static final synthetic c:Lcom/android/quickstep/views/o;

.field public static final synthetic d:Lcom/android/quickstep/views/o;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/o;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/o;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/views/o;->b:Lcom/android/quickstep/views/o;

    new-instance v0, Lcom/android/quickstep/views/o;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/o;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/views/o;->c:Lcom/android/quickstep/views/o;

    new-instance v0, Lcom/android/quickstep/views/o;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/o;-><init>(I)V

    sput-object v0, Lcom/android/quickstep/views/o;->d:Lcom/android/quickstep/views/o;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/views/o;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget p0, p0, Lcom/android/quickstep/views/o;->a:I

    packed-switch p0, :pswitch_data_18

    goto :goto_12

    :pswitch_6  #0x1
    check-cast p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;

    invoke-interface {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController$Listener;->onPipShowMenu()V

    return-void

    :pswitch_c  #0x0
    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p1}, Lcom/android/quickstep/views/RecentsView;->R(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :goto_12
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lcom/oplus/quickstep/gesture/inputconsumer/ChildModeInputConsumer;->a(Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_c  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
