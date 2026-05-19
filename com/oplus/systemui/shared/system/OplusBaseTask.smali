.class public Lcom/oplus/systemui/shared/system/OplusBaseTask;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

.field private static final PID_FIELD_NAME:Ljava/lang/String; = "pid"

.field private static final UID_FIELD_NAME:Ljava/lang/String; = "uid"

.field private static fieldPid:Ljava/lang/reflect/Field;

.field private static fieldUid:Ljava/lang/reflect/Field;


# instance fields
.field public canSplitWindow:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final embeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field public isAppSupportPaymentProtect:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isContentProtect:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isEmbedded:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isPaymentProtect:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isSecondaryTask:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isSplitScreenTask:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isSupportQuickStartup:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public isTaskLandscape:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public modifiedType:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private final normalEmbeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field

.field public pid:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public splitIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public uid:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->embeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->normalEmbeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public static final synthetic access$getFieldPid$cp()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->fieldPid:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static final synthetic access$getFieldUid$cp()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->fieldUid:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public static final synthetic access$setFieldPid$cp(Ljava/lang/reflect/Field;)V
    .registers 1

    sput-object p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->fieldPid:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static final synthetic access$setFieldUid$cp(Ljava/lang/reflect/Field;)V
    .registers 1

    sput-object p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->fieldUid:Ljava/lang/reflect/Field;

    return-void
.end method

.method public static final deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->deepCopyFrom(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p0

    return-object p0
.end method

.method public static final getFieldPid()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getFieldPid()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static final getFieldUid()Ljava/lang/reflect/Field;
    .registers 1

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getFieldUid()Ljava/lang/reflect/Field;

    move-result-object v0

    return-object v0
.end method

.method public static final getTaskInfoPid(Landroid/app/TaskInfo;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getTaskInfoPid(Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

.method public static final getTaskInfoUid(Landroid/app/TaskInfo;)I
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->getTaskInfoUid(Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

.method public static final setFieldPid(Ljava/lang/reflect/Field;)V
    .registers 2

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->setFieldPid(Ljava/lang/reflect/Field;)V

    return-void
.end method

.method public static final setFieldUid(Ljava/lang/reflect/Field;)V
    .registers 2

    sget-object v0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->Companion:Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask$Companion;->setFieldUid(Ljava/lang/reflect/Field;)V

    return-void
.end method


# virtual methods
.method public final getEmbeddedTaskList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getHasEmbedded()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->embeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    goto :goto_b

    :cond_9
    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->normalEmbeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    :goto_b
    return-object p0
.end method

.method public final getEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->embeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final getHasEmbedded()Z
    .registers 1

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->embeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final getNormalEmbeddedTasks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->normalEmbeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final isContainer()Z
    .registers 3

    iget-object v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->embeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_15

    iget-object p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->normalEmbeddedTasks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    if-eqz p0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :cond_15
    :goto_15
    return v1
.end method

.method public final isProtect()Z
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isAppSupportPaymentProtect:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isContentProtect:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->isPaymentProtect:Z

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method
