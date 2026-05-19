.class public final synthetic Lcom/android/common/util/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;


# static fields
.field public static final synthetic a:Lcom/android/common/util/t;

.field public static final synthetic b:Lcom/android/common/util/t;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->a:Lcom/android/common/util/t;

    new-instance v0, Lcom/android/common/util/t;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/common/util/t;-><init>(I)V

    sput-object v0, Lcom/android/common/util/t;->b:Lcom/android/common/util/t;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;FF)V
    .registers 4

    check-cast p1, Landroid/graphics/Matrix;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    invoke-static {p1}, Lcom/android/common/util/FontManager;->a(Landroid/content/Context;)Lcom/android/common/util/FontManager;

    move-result-object p0

    return-object p0
.end method
