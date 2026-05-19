.class public final Lpantanal/app/bean/DISPLAYAREA$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/DISPLAYAREA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/DISPLAYAREA$Companion;

.field public static final AOD:I = 0x4

.field public static final ASSISTANT:I = 0x1

.field public static final ASSISTANT_LAUNCHER:I = 0x0

.field public static final CAPSULE:I = 0x20

.field public static final DRAGONFLY_SECONDARY_HOME_ONLY:I = 0x80

.field public static final ILLEGAL:I = -0x1

.field public static final LAUNCHER:I = 0x2

.field public static final LOCK_SCREEN:I = 0x40

.field public static final NOTIFICATION:I = 0x10

.field public static final STATUS_BAR:I = 0x8


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/bean/DISPLAYAREA$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/DISPLAYAREA$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/DISPLAYAREA$Companion;->$$INSTANCE:Lpantanal/app/bean/DISPLAYAREA$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
