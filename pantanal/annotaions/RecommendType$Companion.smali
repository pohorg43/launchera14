.class public final Lpantanal/annotaions/RecommendType$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/annotaions/RecommendType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/annotaions/RecommendType$Companion;

.field public static final DEFAULT:I = 0x3

.field public static final NORMAL:I = 0x1

.field public static final OPT_REC:I = 0x4

.field public static final SYSTEM:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/annotaions/RecommendType$Companion;

    invoke-direct {v0}, Lpantanal/annotaions/RecommendType$Companion;-><init>()V

    sput-object v0, Lpantanal/annotaions/RecommendType$Companion;->$$INSTANCE:Lpantanal/annotaions/RecommendType$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
