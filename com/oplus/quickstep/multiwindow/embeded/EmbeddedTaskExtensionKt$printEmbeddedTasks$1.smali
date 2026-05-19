.class final Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt;->printEmbeddedTasks(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/shared/recents/model/Task;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;

    invoke-direct {v0}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;->INSTANCE:Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;
    .registers 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v1

    :goto_10
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_22

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_22
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/multiwindow/embeded/EmbeddedTaskExtensionKt$printEmbeddedTasks$1;->invoke(Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method
