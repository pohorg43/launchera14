.class public final synthetic Lcom/android/quickstep/i2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/touch/PagedOrientationHandler$Int2DAction;


# static fields
.field public static final synthetic a:Lcom/android/quickstep/i2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/quickstep/i2;

    invoke-direct {v0}, Lcom/android/quickstep/i2;-><init>()V

    sput-object v0, Lcom/android/quickstep/i2;->a:Lcom/android/quickstep/i2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;II)V
    .registers 4

    check-cast p1, Lcom/android/quickstep/util/TaskViewSimulator;

    invoke-virtual {p1, p2, p3}, Lcom/android/quickstep/util/TaskViewSimulator;->setTaskRectTranslation(II)V

    return-void
.end method
