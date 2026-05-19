.class public final synthetic Lcom/android/launcher3/model/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic b:Lcom/android/launcher3/model/f0;

.field public static final synthetic c:Lcom/android/launcher3/model/f0;


# instance fields
.field public final synthetic a:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/f0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/f0;->b:Lcom/android/launcher3/model/f0;

    new-instance v0, Lcom/android/launcher3/model/f0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/f0;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/model/f0;->c:Lcom/android/launcher3/model/f0;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/model/f0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    iget p0, p0, Lcom/android/launcher3/model/f0;->a:I

    packed-switch p0, :pswitch_data_10

    goto :goto_b

    :pswitch_6  #0x0
    invoke-static {p1}, Lcom/android/launcher3/model/ItemInstallQueue;->g(Landroid/content/Context;)Lcom/android/launcher3/model/ItemInstallQueue;

    move-result-object p0

    return-object p0

    :goto_b
    invoke-static {p1}, Lcom/android/quickstep/TopTaskTracker;->d(Landroid/content/Context;)Lcom/android/quickstep/TopTaskTracker;

    move-result-object p0

    return-object p0

    :pswitch_data_10
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
