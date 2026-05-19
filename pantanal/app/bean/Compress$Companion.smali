.class public final Lpantanal/app/bean/Compress$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/Compress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/Compress$Companion;

.field public static final FLATER:I = 0x1

.field public static final NONE:I = 0x0

.field public static final SIMPLIFY:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/bean/Compress$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/Compress$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/Compress$Companion;->$$INSTANCE:Lpantanal/app/bean/Compress$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
