.class public final Lpantanal/app/bean/DRAGONFLYTYPE$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpantanal/app/bean/DRAGONFLYTYPE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# static fields
.field public static final synthetic $$INSTANCE:Lpantanal/app/bean/DRAGONFLYTYPE$Companion;

.field public static final DYNAMIC:I = 0x1

.field public static final HOME:I = 0x2

.field public static final LAB:I = 0x3

.field public static final NORMAL:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lpantanal/app/bean/DRAGONFLYTYPE$Companion;

    invoke-direct {v0}, Lpantanal/app/bean/DRAGONFLYTYPE$Companion;-><init>()V

    sput-object v0, Lpantanal/app/bean/DRAGONFLYTYPE$Companion;->$$INSTANCE:Lpantanal/app/bean/DRAGONFLYTYPE$Companion;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
