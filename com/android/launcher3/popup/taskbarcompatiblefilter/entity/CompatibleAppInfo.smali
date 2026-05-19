.class public final Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/room/Entity;
    tableName = "taskbar_compatible_apps"
.end annotation


# instance fields
.field private activityName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "activityName"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "id"
    .end annotation

    .annotation build Landroidx/room/PrimaryKey;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation build Landroidx/room/ColumnInfo;
        name = "packageName"
    .end annotation
.end field

.field private selfDisplayTimes:I
    .annotation build Landroidx/room/ColumnInfo;
        name = "selfDisplayTimes"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 11

    const-string/jumbo v1, "packageName"

    const-string v3, "activityName"

    const-string v5, "id"

    move-object v0, p1

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v0 .. v5}, La;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    iput-object p4, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget-object p2, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    :cond_c
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_12

    iget p3, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    :cond_12
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_18

    iget-object p4, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    :cond_18
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    return p0
.end method

.method public final component4()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;
    .registers 5

    const-string/jumbo p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "activityName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "id"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    iget v3, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    if-eq v1, v3, :cond_29

    return v2

    :cond_29
    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_34

    return v2

    :cond_34
    return v0
.end method

.method public final getActivityName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    return-object p0
.end method

.method public final getId()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSelfDisplayTimes()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    return p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final setActivityName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public final setPackageName(Ljava/lang/String;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public final setSelfDisplayTimes(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CompatibleAppInfo(packageName="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", activityName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", selfDisplayTimes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->selfDisplayTimes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/popup/taskbarcompatiblefilter/entity/CompatibleAppInfo;->id:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
