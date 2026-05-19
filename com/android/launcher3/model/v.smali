.class public final synthetic Lcom/android/launcher3/model/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/android/launcher3/model/v;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/model/v;

    invoke-direct {v0}, Lcom/android/launcher3/model/v;-><init>()V

    sput-object v0, Lcom/android/launcher3/model/v;->a:Lcom/android/launcher3/model/v;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-static {p1}, Lcom/android/launcher3/model/BaseModelUpdateTask;->k(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result p0

    return p0
.end method
