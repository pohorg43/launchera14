.class Lcom/android/common/util/LauncherAnimationLevelUtils$1;
.super Ljava/util/HashSet;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/util/LauncherAnimationLevelUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/common/util/LauncherAnimationLevelUtils;


# direct methods
.method public constructor <init>(Lcom/android/common/util/LauncherAnimationLevelUtils;)V
    .registers 2

    iput-object p1, p0, Lcom/android/common/util/LauncherAnimationLevelUtils$1;->this$0:Lcom/android/common/util/LauncherAnimationLevelUtils;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    const/16 p1, 0x67

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x6c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method
