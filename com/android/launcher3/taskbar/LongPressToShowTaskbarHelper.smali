.class public final Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;
    }
.end annotation


# static fields
.field public static final ANIM_DURATION_300:J = 0x12cL

.field public static final ANIM_DURATION_400:J = 0x190L

.field public static final INSTANCE:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;

.field public static final TAG:Ljava/lang/String; = "LongPressToShowTaskbarHelper"

.field private static shouldDraw:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;->INSTANCE:Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getHotAreaPaint()Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper$MyPaint;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getShouldDraw()Z
    .registers 1

    sget-boolean p0, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;->shouldDraw:Z

    return p0
.end method

.method public final setShouldDraw(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/launcher3/taskbar/LongPressToShowTaskbarHelper;->shouldDraw:Z

    return-void
.end method
