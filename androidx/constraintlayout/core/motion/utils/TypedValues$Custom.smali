.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Custom"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Custom"

.field public static final S_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final S_COLOR:Ljava/lang/String; = "color"

.field public static final S_DIMENSION:Ljava/lang/String; = "dimension"

.field public static final S_FLOAT:Ljava/lang/String; = "float"

.field public static final S_INT:Ljava/lang/String; = "integer"

.field public static final S_REFERENCE:Ljava/lang/String; = "refrence"

.field public static final S_STRING:Ljava/lang/String; = "string"

.field public static final TYPE_BOOLEAN:I = 0x388

.field public static final TYPE_COLOR:I = 0x386

.field public static final TYPE_DIMENSION:I = 0x389

.field public static final TYPE_FLOAT:I = 0x385

.field public static final TYPE_INT:I = 0x384

.field public static final TYPE_REFERENCE:I = 0x38a

.field public static final TYPE_STRING:I = 0x387


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-string v0, "float"

    const-string v1, "color"

    const-string/jumbo v2, "string"

    const-string v3, "boolean"

    const-string v4, "dimension"

    const-string/jumbo v5, "refrence"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->KEY_WORDS:[Ljava/lang/String;

    return-void
.end method

.method public static getId(Ljava/lang/String;)I
    .registers 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_74

    :goto_b
    move p0, v1

    goto :goto_5b

    :sswitch_d
    const-string v0, "integer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_b

    :cond_16
    const/4 p0, 0x6

    goto :goto_5b

    :sswitch_18
    const-string v0, "float"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_b

    :cond_21
    const/4 p0, 0x5

    goto :goto_5b

    :sswitch_23
    const-string v0, "color"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    goto :goto_b

    :cond_2c
    const/4 p0, 0x4

    goto :goto_5b

    :sswitch_2e
    const-string v0, "boolean"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_37

    goto :goto_b

    :cond_37
    const/4 p0, 0x3

    goto :goto_5b

    :sswitch_39
    const-string/jumbo v0, "refrence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto :goto_b

    :cond_43
    const/4 p0, 0x2

    goto :goto_5b

    :sswitch_45
    const-string/jumbo v0, "string"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4f

    goto :goto_b

    :cond_4f
    const/4 p0, 0x1

    goto :goto_5b

    :sswitch_51
    const-string v0, "dimension"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5a

    goto :goto_b

    :cond_5a
    const/4 p0, 0x0

    :goto_5b
    packed-switch p0, :pswitch_data_92

    return v1

    :pswitch_5f  #0x6
    const/16 p0, 0x384

    return p0

    :pswitch_62  #0x5
    const/16 p0, 0x385

    return p0

    :pswitch_65  #0x4
    const/16 p0, 0x386

    return p0

    :pswitch_68  #0x3
    const/16 p0, 0x388

    return p0

    :pswitch_6b  #0x2
    const/16 p0, 0x38a

    return p0

    :pswitch_6e  #0x1
    const/16 p0, 0x387

    return p0

    :pswitch_71  #0x0
    const/16 p0, 0x389

    return p0

    :sswitch_data_74
    .sparse-switch
        -0x4144929a -> :sswitch_51
        -0x352a9fef -> :sswitch_45
        -0x2a604a76 -> :sswitch_39
        0x3db6c28 -> :sswitch_2e
        0x5a72f63 -> :sswitch_23
        0x5d0225c -> :sswitch_18
        0x74b5813e -> :sswitch_d
    .end sparse-switch

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_71  #00000000
        :pswitch_6e  #00000001
        :pswitch_6b  #00000002
        :pswitch_68  #00000003
        :pswitch_65  #00000004
        :pswitch_62  #00000005
        :pswitch_5f  #00000006
    .end packed-switch
.end method
