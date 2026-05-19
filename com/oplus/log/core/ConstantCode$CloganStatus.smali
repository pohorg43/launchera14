.class public Lcom/oplus/log/core/ConstantCode$CloganStatus;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/core/ConstantCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CloganStatus"
.end annotation


# static fields
.field public static final CLGOAN_INIT_STATUS:Ljava/lang/String; = "clogan_init"

.field public static final CLOAGN_WRITE_FAIL_MAXFILE:I = -0xfbe

.field public static final CLOGAN_INIT_FAIL_HEADER:I = -0x41a

.field public static final CLOGAN_INIT_FAIL_JNI:I = -0x424

.field public static final CLOGAN_INIT_FAIL_NOCACHE:I = -0x406

.field public static final CLOGAN_INIT_FAIL_NOMALLOC:I = -0x410

.field public static final CLOGAN_INIT_SUCCESS_MEMORY:I = -0x3fc

.field public static final CLOGAN_INIT_SUCCESS_MMAP:I = -0x3f2

.field public static final CLOGAN_LOAD_SO:Ljava/lang/String; = "logan_loadso"

.field public static final CLOGAN_LOAD_SO_FAIL:I = -0x139c

.field public static final CLOGAN_OPEN_FAIL_HEADER:I = -0x80c

.field public static final CLOGAN_OPEN_FAIL_IO:I = -0x7e4

.field public static final CLOGAN_OPEN_FAIL_JNI:I = -0x816

.field public static final CLOGAN_OPEN_FAIL_MALLOC:I = -0x7f8

.field public static final CLOGAN_OPEN_FAIL_NOINIT:I = -0x802

.field public static final CLOGAN_OPEN_FAIL_ZLIB:I = -0x7ee

.field public static final CLOGAN_OPEN_STATUS:Ljava/lang/String; = "clogan_open"

.field public static final CLOGAN_OPEN_SUCCESS:I = -0x7da

.field public static final CLOGAN_WRITE_FAIL_HEADER:I = -0xfd2

.field public static final CLOGAN_WRITE_FAIL_JNI:I = -0xfdc

.field public static final CLOGAN_WRITE_FAIL_MALLOC:I = -0xfc8

.field public static final CLOGAN_WRITE_FAIL_PARAM:I = -0xfb4

.field public static final CLOGAN_WRITE_STATUS:Ljava/lang/String; = "clogan_write"

.field public static final CLOGAN_WRITE_SUCCESS:I = -0xfaa


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
