.class public final synthetic Lcom/android/launcher3/touch/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;
.implements Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/touch/g;

.field public static final synthetic b:Lcom/android/launcher3/touch/g;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/touch/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/g;->a:Lcom/android/launcher3/touch/g;

    new-instance v0, Lcom/android/launcher3/touch/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/launcher3/touch/g;-><init>(I)V

    sput-object v0, Lcom/android/launcher3/touch/g;->b:Lcom/android/launcher3/touch/g;

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

    check-cast p1, Landroid/graphics/Canvas;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .registers 2

    new-instance p0, Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0, p1}, Lcom/android/quickstep/RotationTouchHelper;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
