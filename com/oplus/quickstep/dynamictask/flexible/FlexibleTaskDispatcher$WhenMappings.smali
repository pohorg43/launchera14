.class public final synthetic Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$WhenMappings;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x1

    :try_start_8
    sget-object v2, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ZOOM_HIDE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    const/4 v2, 0x2

    :try_start_11
    sget-object v3, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ENTER_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v2, v0, v3
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    const/4 v3, 0x3

    :try_start_1a
    sget-object v4, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->ATTACH_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v3, v0, v4
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_22} :catch_22

    :catch_22
    const/4 v4, 0x4

    :try_start_23
    sget-object v5, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;->CONTENT_UNPROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v4, v0, v5
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_2b} :catch_2b

    :catch_2b
    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->values()[Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_34
    sget-object v5, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->ANIM_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aput v1, v0, v5
    :try_end_3c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_3c} :catch_3c

    :catch_3c
    :try_start_3c
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->PULL_LAUNCH_TASK:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_4c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4c} :catch_4c

    :catch_4c
    :try_start_4c
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->EXIT_RECENT:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4c .. :try_end_54} :catch_54

    :catch_54
    :try_start_54
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->REMOVE:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5d} :catch_5d

    :catch_5d
    :try_start_5d
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->WINDOW_MODE_CHANGED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_66
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5d .. :try_end_66} :catch_66

    :catch_66
    :try_start_66
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CLEAR_ALL:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_66 .. :try_end_6f} :catch_6f

    :catch_6f
    :try_start_6f
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->SYSTEM_NOTIFIED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_79
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6f .. :try_end_79} :catch_79

    :catch_79
    :try_start_79
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->RECNET_DETACH:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_83
    .catch Ljava/lang/NoSuchFieldError; {:try_start_79 .. :try_end_83} :catch_83

    :catch_83
    :try_start_83
    sget-object v1, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;->CONTENT_PROTECTED:Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_8d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_83 .. :try_end_8d} :catch_8d

    :catch_8d
    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
