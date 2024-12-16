<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PDF Card</title>
    <style>
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            justify-content: center;
        }

        .pdf-card {
            width: 300px;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            cursor: pointer;
            transition: transform 0.2s;
            background: white;
            flex: 0 0 auto; /* Prevents stretching */
        }

        .pdf-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0,0,0,0.2);
        }

        .pdf-icon {
            width: 100%;
            height: 200px;
            background: #f5f5f5;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-bottom: 15px;
            border-radius: 4px;
        }

        .pdf-icon svg {
            width: 50px;
            height: 50px;
            color: #dc3545;
        }

        .pdf-title {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
            color: #333;
        }

        .pdf-description {
            font-size: 14px;
            color: #666;
            margin-bottom: 15px;
        }

        .pdf-size {
            font-size: 12px;
            color: #888;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .container {
                padding: 10px;
            }
            
            .pdf-card {
                width: calc(50% - 30px); /* 2 cards per row on tablets */
            }
        }

        @media (max-width: 480px) {
            .pdf-card {
                width: 100%; /* 1 card per row on mobile */
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <?php $__currentLoopData = $pdfs; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $pdf): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
            <a href="<?php echo e(asset($pdf['path'])); ?>" target="_blank" style="text-decoration: none;">
                <div class="pdf-card">
                    <div class="pdf-icon">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M7 21h10a2 2 0 002-2V9.414a1 1 0 00-.293-.707l-5.414-5.414A1 1 0 0012.586 3H7a2 2 0 00-2 2v14a2 2 0 002 2z" />
                        </svg>
                    </div>
                    <div class="pdf-title"><?php echo e($pdf['title']); ?></div>
                    <div class="pdf-description"><?php echo e($pdf['description']); ?></div>
                    <div class="pdf-size"><?php echo e($pdf['size']); ?></div>  
                </div>
            </a>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
    </div>
</body>
</html><?php /**PATH C:\laragon\www\Test1\resources\views/welcome.blade.php ENDPATH**/ ?>