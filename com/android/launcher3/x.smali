.class public final synthetic Lcom/android/launcher3/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/x;

.field public static final synthetic c:Lcom/android/launcher3/x;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/x;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/x;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/x;->b:Lcom/android/launcher3/x;

    new-instance v0, Lcom/android/launcher3/x;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/x;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/x;->c:Lcom/android/launcher3/x;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/x;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/x;->a:I

    packed-switch p0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    new-instance p0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusInvariantDeviceProfile;-><init>(Landroid/content/Context;)V

    return-object p0

    :goto_c
    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->b(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
