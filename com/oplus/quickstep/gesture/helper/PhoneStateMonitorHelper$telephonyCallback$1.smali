.class public final Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;
.super Landroid/telephony/TelephonyCallback;
.source ""

# interfaces
.implements Landroid/telephony/TelephonyCallback$CallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhoneStateMonitorHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneStateMonitorHelper.kt\ncom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,93:1\n1855#2,2:94\n*S KotlinDebug\n*F\n+ 1 PhoneStateMonitorHelper.kt\ncom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1\n*L\n57#1:94,2\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(I)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "onCallStateChanged: state = "

    const-string v1, "QuickStep"

    const-string v2, "PhoneStateMonitorHelper"

    invoke-static {v0, p1, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_37

    const/4 v1, 0x1

    if-eq p1, v1, :cond_25

    const/4 v2, 0x2

    if-eq p1, v2, :cond_13

    goto :goto_48

    :cond_13
    iget-object v2, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v2

    if-nez v2, :cond_1c

    goto :goto_1f

    :cond_1c
    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    :goto_1f
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->setInCalling(Z)V

    goto :goto_48

    :cond_25
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v0

    if-nez v0, :cond_2e

    goto :goto_31

    :cond_2e
    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    :goto_31
    iget-object v0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->setInCalling(Z)V

    goto :goto_48

    :cond_37
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v1}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->getMGestureState()Lcom/oplus/quickstep/gesture/OplusGestureState;

    move-result-object v1

    if-nez v1, :cond_40

    goto :goto_43

    :cond_40
    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/OplusGestureState;->setMSystemWindowClosed(Z)V

    :goto_43
    iget-object v1, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->setInCalling(Z)V

    :goto_48
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper$telephonyCallback$1;->this$0:Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;->access$getListeners$p(Lcom/oplus/quickstep/gesture/helper/PhoneStateMonitorHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyCallback$CallStateListener;

    invoke-interface {v0, p1}, Landroid/telephony/TelephonyCallback$CallStateListener;->onCallStateChanged(I)V

    goto :goto_52

    :cond_62
    return-void
.end method
