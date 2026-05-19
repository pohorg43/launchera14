.class public final synthetic Lcom/android/launcher3/model/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/x;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/x;

    invoke-direct {v0}, Lcom/android/launcher3/model/x;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/x;->a:Lcom/android/launcher3/model/x;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->e(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)I

    move-result p0

    return p0
.end method
