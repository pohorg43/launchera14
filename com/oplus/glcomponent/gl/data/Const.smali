.class public final Lcom/oplus/glcomponent/gl/data/Const;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0005\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0016\u0010\u0006\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0016\u0010\u0007\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0016\u0010\b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0016\u0010\n\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0016\u0010\u000b\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0016\u0010\f\u001a\u00020\u00028\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004¨\u0006\u000f"
    }
    d2 = {
        "Lcom/oplus/glcomponent/gl/data/Const;",
        "",
        "",
        "BYTES_PER_INT",
        "I",
        "BYTES_PER_FLOAT",
        "BYTES_PER_SHORT",
        "INVALID_HANDLE",
        "INVALID_TEXTURE",
        "INVALID_BUFFER",
        "DIMEN_MIN",
        "DIMEN_MAX",
        "BYTES_PER_MAT4",
        "<init>",
        "()V",
        "glcomponent_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final BYTES_PER_FLOAT:I = 0x4

.field public static final BYTES_PER_INT:I = 0x4

.field public static final BYTES_PER_MAT4:I = 0x40

.field public static final BYTES_PER_SHORT:I = 0x2

.field public static final DIMEN_MAX:I = 0x1388

.field public static final DIMEN_MIN:I = 0x1

.field public static final INSTANCE:Lcom/oplus/glcomponent/gl/data/Const;

.field public static final INVALID_BUFFER:I = -0x1

.field public static final INVALID_HANDLE:I = -0x1

.field public static final INVALID_TEXTURE:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/glcomponent/gl/data/Const;

    invoke-direct {v0}, Lcom/oplus/glcomponent/gl/data/Const;-><init>()V

    sput-object v0, Lcom/oplus/glcomponent/gl/data/Const;->INSTANCE:Lcom/oplus/glcomponent/gl/data/Const;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
