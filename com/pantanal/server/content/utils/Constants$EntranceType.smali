.class public interface abstract annotation Lcom/pantanal/server/content/utils/Constants$EntranceType;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongConstant"
    }
.end annotation

.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pantanal/server/content/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "EntranceType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/utils/Constants$EntranceType$Companion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\b\u0002\b\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0002B\u0000¨\u0006\u0003"
    }
    d2 = {
        "Lcom/pantanal/server/content/utils/Constants$EntranceType;",
        "",
        "Companion",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lkotlin/annotation/AnnotationRetention;->SOURCE:Lkotlin/annotation/AnnotationRetention;
.end annotation


# static fields
.field public static final ALL:I = 0x0

.field public static final AOD:I = 0x4

.field public static final ASSISTANT:I = 0x1

.field public static final CAPSULE:I = 0x20

.field public static final CAR_ENTRY_PREFIX:Ljava/lang/String; = "car"

.field public static final CAR_LAUNCHER:I = 0x1000

.field public static final Companion:Lcom/pantanal/server/content/utils/Constants$EntranceType$Companion;

.field public static final HEADSET:I = 0x80

.field public static final LAUNCHER:I = 0x2

.field public static final LOCK_SCREEN:I = 0x40

.field public static final NOTIFICATION:I = 0x10

.field public static final SECONDARY_LAUNCHER:I = 0x400

.field public static final SECONDARY_LOCKSCREEN:I = 0x100

.field public static final SECONDARY_NOTIFICATION:I = 0x200

.field public static final STATUS_BAR:I = 0x8

.field public static final TAG:Ljava/lang/String; = "EntranceType"

.field public static final UNDEFINED:I = -0x1


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/pantanal/server/content/utils/Constants$EntranceType$Companion;->$$INSTANCE:Lcom/pantanal/server/content/utils/Constants$EntranceType$Companion;

    sput-object v0, Lcom/pantanal/server/content/utils/Constants$EntranceType;->Companion:Lcom/pantanal/server/content/utils/Constants$EntranceType$Companion;

    return-void
.end method
