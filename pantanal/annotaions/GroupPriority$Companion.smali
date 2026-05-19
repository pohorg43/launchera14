.class public final Lpantanal/annotaions/GroupPriority$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/annotaions/GroupPriority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/annotaions/GroupPriority$Companion;

.field public static final T0:I = 0x1

.field public static final T1:I = 0x2

.field public static final T2:I = 0x3

.field public static final T3:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/annotaions/GroupPriority$Companion;

    invoke-direct {v0}, Lpantanal/annotaions/GroupPriority$Companion;-><init>()V

    sput-object v0, Lpantanal/annotaions/GroupPriority$Companion;->$$INSTANCE:Lpantanal/annotaions/GroupPriority$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
