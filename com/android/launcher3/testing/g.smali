.class public final synthetic Lcom/android/launcher3/testing/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/testing/TestInformationHandler$BundleSetter;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/oplus/statistics/util/Supplier;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/testing/g;

.field public static final synthetic c:Lcom/android/launcher3/testing/g;

.field public static final synthetic d:Lcom/android/launcher3/testing/g;

.field public static final synthetic e:Lcom/android/launcher3/testing/g;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/testing/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/g;->b:Lcom/android/launcher3/testing/g;

    new-instance v0, Lcom/android/launcher3/testing/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/g;->c:Lcom/android/launcher3/testing/g;

    new-instance v0, Lcom/android/launcher3/testing/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/g;->d:Lcom/android/launcher3/testing/g;

    new-instance v0, Lcom/android/launcher3/testing/g;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/launcher3/testing/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/testing/g;->e:Lcom/android/launcher3/testing/g;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/testing/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 1

    invoke-static {}, Lcom/oplus/statistics/OplusTrack;->r()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/testing/g;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x1
    new-instance p0, Lcom/android/quickstep/util/ProtoTracer;

    invoke-direct {p0, p1}, Lcom/android/quickstep/util/ProtoTracer;-><init>(Landroid/content/Context;)V

    return-object p0

    :goto_c
    invoke-static {p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->d(Landroid/content/Context;)Lcom/oplus/quickstep/appswitch/AppSwitchController;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_6  #00000001
    .end packed-switch
.end method

.method public set(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
