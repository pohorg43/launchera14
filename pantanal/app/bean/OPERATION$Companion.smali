.class public final Lpantanal/app/bean/OPERATION$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/OPERATION;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/OPERATION$Companion;

.field public static final HOT:I = 0x3

.field public static final NEW:I = 0x2

.field public static final NONE:I = 0x1

.field public static final UNAVAILABLE:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/bean/OPERATION$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/OPERATION$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/OPERATION$Companion;->$$INSTANCE:Lpantanal/app/bean/OPERATION$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
